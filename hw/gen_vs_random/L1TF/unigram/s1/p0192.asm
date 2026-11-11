.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, 89
add cl, -98 # instrumentation
setp sil
sub cl, cl
cmovnz bx, di
cmp edx, 99
add dl, 76 # instrumentation
sbb bx, 77
xchg si, ax
sbb al, al
seto dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovno cx, ax
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
add bl, 37 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
