.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rsi]
add cl, 6 # instrumentation
cmovl eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
cmovnz rsi, rcx
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
add al, -33 # instrumentation
cmovnl si, cx
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
cmovo rdx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 83
sbb di, 80
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
cmovno ecx, ecx
and rcx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
