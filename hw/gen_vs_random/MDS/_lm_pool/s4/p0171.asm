.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and dl, bl
or rax, 52
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
or ebx, eax
btc di, bx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test cl, dl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
jmp .bb_0.2
.bb_0.2:
or sil, -78
cmovno rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
