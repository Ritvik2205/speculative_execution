.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edx, edi
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
btc rdi, rax
cmovnb esi, esi
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovl rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 16
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and cl, 8
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
bts di, dx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 33
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
