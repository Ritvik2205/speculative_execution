.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and edi, 23
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and dil, al
or dil, dl
and dl, cl
xor eax, -127
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test dl, 9
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and cx, -2
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 13
xor si, 91
bt ax, cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
