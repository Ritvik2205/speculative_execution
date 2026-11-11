.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and bl, sil
lea rcx, qword ptr [rdx + rcx + 50]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
cmovs dx, ax
add cl, 72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
lea edx, qword ptr [rax]
setp dl
mul rax
movzx eax, dl
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
add al, 121 # instrumentation
setnb bl
lea di, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
movsx ebx, sil
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
