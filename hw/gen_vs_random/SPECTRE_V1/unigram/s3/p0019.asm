.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno sil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 88
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 89
mov si, ax
lea cx, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 72
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
movzx dx, al
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
cmp dil, dl
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edi
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
