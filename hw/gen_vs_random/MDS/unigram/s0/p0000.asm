.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
bt cx, si
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
cmovb rdx, rax
and dl, -127 # instrumentation
cmovno eax, ebx
test dx, 16353
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 60
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
btr ax, 193
cmovbe di, si
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
btc rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 60
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
