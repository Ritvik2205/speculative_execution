.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
sub dil, -111
lea edi, qword ptr [rdi + rcx + 48]
xor edx, edi
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, dl
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
or di, -85
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
add al, 33 # instrumentation
setnz al
xor cl, -91
bts edx, 177
mov bl, al
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
