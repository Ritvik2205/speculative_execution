.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
xor cl, dl
and rax, -978188247
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
or bl, 43
test bl, al
test esi, 1857129931
test al, 91
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or ecx, 10
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
