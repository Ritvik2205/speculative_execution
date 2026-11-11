.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -843636050
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
xor bl, -27
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 95
btr ebx, 0
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
test ebx, -2015966884
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rax
or esi, eax
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
bt bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
btr ebx, ebx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
cmovb rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
