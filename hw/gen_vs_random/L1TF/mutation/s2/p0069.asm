.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 28
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
add bx, 85
sub al, 25
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
btc di, 237
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
sbb bl, -62
mov rax, -6437636498926413678
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
xor bl, dl
bts eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
