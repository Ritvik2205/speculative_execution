.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, bx
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
lea cx, qword ptr [rdi + rcx + 55876]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 70
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 82
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 59
cmp edi, 42
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
cwde
movzx rdi, di
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
