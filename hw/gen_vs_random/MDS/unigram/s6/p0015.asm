.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno cx, di
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 46
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
test si, 55
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
not sil
test sil, al
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
xor al, 99
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
bt esi, 3
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rbx, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
