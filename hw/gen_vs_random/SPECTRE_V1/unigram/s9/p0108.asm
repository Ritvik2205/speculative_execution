.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -92
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
movsx edi, bl
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
cmovnb rsi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmp dl, 71
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, sil
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 58
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
