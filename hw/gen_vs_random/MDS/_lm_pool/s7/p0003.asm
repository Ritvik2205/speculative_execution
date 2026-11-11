.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
not dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and bl, 68
xor cl, -13
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
or dl, dil
or dil, dl
or eax, -696456144
xor cl, dl
jmp .bb_0.1
.bb_0.1:
and esi, 50
or al, dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
