.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
lea eax, qword ptr [rbx + rcx + 28]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
sbb rsi, 6
adc sil, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
sbb sil, -19
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
cmovb cx, si
or cl, al
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
