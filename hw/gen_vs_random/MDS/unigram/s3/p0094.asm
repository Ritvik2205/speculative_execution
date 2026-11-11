.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, 199
not sil
bts ax, di
cmovnp esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and bl, 68
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
or cl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
test esi, 1857129931
or al, 16
btr bx, si
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
test al, bl
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or eax, 678817098
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
