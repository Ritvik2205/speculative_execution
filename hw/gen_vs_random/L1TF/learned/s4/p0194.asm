.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
btc ax, dx
add bl, dl
lea esi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 64
setno dl
jmp .bb_0.1
.bb_0.1:
and edi, 29
not edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
