.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
cmovle rbx, rdx
imul rbx, rsi, 42
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
add dl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
xor dl, 71
lea rdx, qword ptr [rdx + rax]
adc sil, -77
cmovz eax, edi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
