.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
xor sil, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and bl, 68
and bl, al
bts rsi, rdx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and dx, 3
or bl, 43
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
