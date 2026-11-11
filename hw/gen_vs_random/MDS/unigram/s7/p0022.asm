.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovnz edi, ecx
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
btr bx, 100
bt ecx, esi
and al, -68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
btr di, bx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
xor bl, 67
test dil, -80
and dil, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
bts di, 37
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and bl, 108 # instrumentation
cmovns rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
