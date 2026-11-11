.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
cmp edx, 24
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
jmp .bb_0.1
.bb_0.1:
adc sil, bl
lea eax, qword ptr [rcx + rdx + 42]
adc cl, 62
xor eax, -117
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 41
mov al, -26
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
dec sil
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
cmovnle esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
