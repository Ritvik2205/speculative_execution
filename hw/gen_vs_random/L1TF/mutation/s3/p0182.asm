.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 88
sub al, 88
add bx, 85
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
btc di, 237
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
mov rax, -6437636498926413678
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bts eax, edi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
sbb bl, -94
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
