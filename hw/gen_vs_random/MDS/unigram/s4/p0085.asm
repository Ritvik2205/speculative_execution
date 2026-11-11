.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 95
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
xor edi, edi
and al, 126
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
or bx, dx
and ebx, 12
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
or si, 28
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and bl, 52
or bl, bl
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
cmovle rbx, rsi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 37
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
xor ecx, 37
and dil, sil
xor bl, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
