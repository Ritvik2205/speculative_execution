.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
cmovb rcx, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
cmovnl ecx, eax
and sil, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
test edx, -372470678
jmp .bb_0.1
.bb_0.1:
and dl, -128 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
bt dx, 162
bts edi, 248
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
test di, 11
bts ebx, eax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test edi, edx
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
