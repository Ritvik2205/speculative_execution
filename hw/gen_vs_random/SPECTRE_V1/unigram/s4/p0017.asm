.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
cmp dil, 11
or si, 33
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test ebx, 88
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rbx]
cmovl rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
lea si, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
