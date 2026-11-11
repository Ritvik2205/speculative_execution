.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
add bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
test bl, 68
dec cl
and bl, 125
cmovs esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sbb dl, 87
bt rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 80
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
mul rax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
or dx, -126
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
