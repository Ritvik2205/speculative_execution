.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 25
and al, dil
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
xor al, -19
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and dil, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and bl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and dil, 21 # instrumentation
cmovb ax, di
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 15
btr rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
