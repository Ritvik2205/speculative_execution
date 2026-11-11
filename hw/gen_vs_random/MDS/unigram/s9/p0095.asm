.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
btr dx, 47
and rax, -731384280
or al, -75
and rsi, rcx
not ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
not dl
bt ecx, 98
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
btr bx, 74
cmovb ecx, edx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 20
and cl, 118 # instrumentation
cmovp edx, ecx
cmovnbe rbx, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
