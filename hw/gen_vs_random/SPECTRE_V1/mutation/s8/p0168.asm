.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 59
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
add al, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
add bl, -51 # instrumentation
cmovno rbx, rdi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edx
xchg dl, al
xor bl, dl
lea rdi, qword ptr [rdx + rsi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
