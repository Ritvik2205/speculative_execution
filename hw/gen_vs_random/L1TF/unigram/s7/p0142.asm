.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 35
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
imul di, ax, 23
add al, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
inc esi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 16
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 58
setnl al
imul rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
cmovo rax, rax
sub eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
