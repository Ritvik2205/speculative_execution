.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovns eax, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or rbx, -77
cmovnl bx, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or al, cl
or rax, -1523798580
cmovbe eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
bts di, 73
jmp .bb_0.1
.bb_0.1:
xor dl, 8
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 41
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
and ax, -12519
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
and cl, -76 # instrumentation
cmovl si, ax
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
test bl, bl
or dil, -41
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
cmovns ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
