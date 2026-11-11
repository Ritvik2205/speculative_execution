.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 51
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and al, bl
jmp .bb_0.1
.bb_0.1:
test al, -81
and bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
or sil, cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 34
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
btr ebx, eax
xor rdi, -9
test eax, -1634766116
and al, -54
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
