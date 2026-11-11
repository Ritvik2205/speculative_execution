.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdi + rdi + 75]
movzx esi, bl
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or cl, -78
lea rdi, qword ptr [rdx + rsi + 52]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edx
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
lea bx, qword ptr [rcx + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
add cl, 97 # instrumentation
cmovnbe ecx, edi
test bl, 12
not esi
cmovb eax, esi
cmovl rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
