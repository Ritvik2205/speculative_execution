.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -97 # instrumentation
sets al
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
add al, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
add dl, cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
sbb esi, 70
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and bx, -118
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
test al, sil
sbb ax, -17107
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
add dl, 20 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 64
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
lea rax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
