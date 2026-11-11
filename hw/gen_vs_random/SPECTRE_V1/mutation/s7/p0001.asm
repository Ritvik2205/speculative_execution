.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rbx, rbx
sub dl, al
xor eax, -1721938664
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
cmovnle di, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
movzx si, cl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
lea edi, qword ptr [rdi + rdi + 44205]
add sil, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
