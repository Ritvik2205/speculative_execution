.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 95
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 34
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 16
test bl, al
lea si, qword ptr [rbx]
add dl, -94 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 21
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 33
add esi, ecx
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
