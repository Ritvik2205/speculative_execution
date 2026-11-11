.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
xor rsi, rsi
cmovp edx, esi
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
setb cl
lea edi, qword ptr [rsi + rcx + 60]
jmp .bb_0.1
.bb_0.1:
add al, 31
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
add dl, 100 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
mul dil
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
