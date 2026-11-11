.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, ecx
add bl, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
inc ax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
lea rcx, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rdx + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
setnle bl
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdx
add sil, 40 # instrumentation
cmovp rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
