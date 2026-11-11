.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmovno eax, eax
neg eax
btr rdx, 203
lea esi, qword ptr [rdx + rax + 17]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
add ebx, 2
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
adc dl, -12
lea rdx, qword ptr [rsi + rbx + 9]
cmovnbe eax, ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmp dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
