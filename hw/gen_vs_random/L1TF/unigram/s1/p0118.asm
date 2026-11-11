.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 89 # instrumentation
adc al, sil
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], eax
movzx edi, di
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
sbb bl, dl
or rdi, 20
lea rsi, qword ptr [rcx]
lea rax, qword ptr [rcx + rcx]
jmp .bb_0.1
.bb_0.1:
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 53
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
test bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
