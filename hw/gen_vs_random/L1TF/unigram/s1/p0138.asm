.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
cwde
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
inc ecx
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
sbb dil, dl
jmp .bb_0.1
.bb_0.1:
xchg edx, eax
lea ax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
test al, dil
mul rdi
add sil, -71 # instrumentation
adc esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
