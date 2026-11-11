.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs dx, cx
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
imul edx
lea rcx, qword ptr [rcx + rbx + 26]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
add dl, 104 # instrumentation
mov edx, -377652802
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 26
or cl, sil
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
mov cx, 87
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 14
add al, -117 # instrumentation
setp dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
