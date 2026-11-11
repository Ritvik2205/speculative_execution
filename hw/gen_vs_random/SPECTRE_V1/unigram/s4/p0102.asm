.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
add dl, 63 # instrumentation
cmovl dx, bx
xor dl, 9
movzx ebx, dl
add bl, 40 # instrumentation
lea bx, qword ptr [rcx + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], di
bts esi, edx
cmovns rdi, rdi
movsx di, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 57
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], 44
cmovle rbx, rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 41
setnz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
