.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -77 # instrumentation
cmovns ax, di
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
add dl, -10 # instrumentation
cmovns esi, ecx
xor sil, al
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
or ecx, esi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
cmovle rdi, rax
and al, al
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
movsx rdx, di
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
