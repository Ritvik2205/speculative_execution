.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 59
inc di
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
not rdi
xor esi, 47
lea ebx, qword ptr [rbx + rdi + 23]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
movzx edi, dl
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
adc sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
