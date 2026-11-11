.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
and ecx, -38
and dl, bl
sbb cl, al
lea esi, qword ptr [rax + rax + 57]
mul cx
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
dec rdx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
