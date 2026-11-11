.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ebx, di
adc cx, 3
lea rcx, qword ptr [rcx]
add bl, 77 # instrumentation
sbb ebx, -34
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
test rsi, rcx
cmovns edx, eax
add cl, -6 # instrumentation
cmovnb eax, ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 82
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rsi]
test rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
lea rdx, qword ptr [rdx + rcx + 54]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
