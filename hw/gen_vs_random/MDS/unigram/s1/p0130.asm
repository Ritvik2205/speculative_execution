.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
not rsi
test sil, cl
bts ax, dx
or al, -61
btr ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 16
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
btc rdx, 11
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
or ebx, -104
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or bl, cl
cmovz rbx, rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
