.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
dec dx
add bl, 68
add bl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
lea ax, qword ptr [rax + rdx]
inc cl
jmp .bb_0.1
.bb_0.1:
add cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
cmovbe rbx, rsi
add bl, 108 # instrumentation
setl bl
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
test ax, 7679
lea di, qword ptr [rax + rax + 83]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
add bl, 30 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
