.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rbx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or al, -17
bts rdx, rcx
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 1886208862
test edi, -1252846009
and dl, dl
xor dl, 8
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or sil, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
