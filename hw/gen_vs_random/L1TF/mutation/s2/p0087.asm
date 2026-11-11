.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 25
add bx, 85
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
sub al, 28
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
btc di, 237
bts eax, edi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov rax, -6437636498926413678
sbb bl, -62
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
