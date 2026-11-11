.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
or bl, bl
test dil, bl
xor al, bl
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
cmovnle edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
xor ax, ax
and eax, -85386306
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and al, 21 # instrumentation
cmovb bx, ax
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
cmovnbe rcx, rax
cmovnbe di, ax
or al, 54
btc dx, 146
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
xor di, -83
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
xor dl, dl
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
