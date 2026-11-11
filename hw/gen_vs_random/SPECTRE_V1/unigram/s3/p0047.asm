.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt bx, 56
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
lea bx, qword ptr [rax + rdi]
cmovo dx, si
add al, 10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
movsx rdx, dx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
add bl, -27 # instrumentation
setle bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
bts rcx, 96
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 72
add al, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
