.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovbe ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
cmp dil, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
btr rbx, 54
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
sbb dil, -93
and dl, -109
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
