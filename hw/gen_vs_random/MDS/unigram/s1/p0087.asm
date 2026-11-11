.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovnz dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdx, 48
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
cmovo rax, rax
and rbx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
xor dl, al
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
cmovnl esi, edx
or dl, bl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and dil, -15 # instrumentation
cmovnp di, di
cmovle rax, rdx
bt eax, 37
and cx, -8
or eax, 678817098
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
