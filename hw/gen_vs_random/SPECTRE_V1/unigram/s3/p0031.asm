.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
xor cl, dl
bt esi, 84
lea edi, qword ptr [rdi + rax]
adc dil, 85
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
adc di, bx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and dx, 6
xor rax, 376589024
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
lea ecx, qword ptr [rax + rax + 43]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
