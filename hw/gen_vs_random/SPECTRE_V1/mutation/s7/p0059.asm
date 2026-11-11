.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
cmovnle di, cx
sub dl, al
and rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
xor eax, -1721938664
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
lea edi, qword ptr [rdi + rdi + 44205]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
movzx si, cl
add sil, -68
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
