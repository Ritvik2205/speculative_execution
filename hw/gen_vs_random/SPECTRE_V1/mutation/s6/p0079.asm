.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 59
add al, al
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, dl
lea rdi, qword ptr [rdx + rsi]
add bl, -51 # instrumentation
cmovno rbx, rdi
xchg dl, al
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
