.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 21
lea di, qword ptr [rcx + rsi]
lea dx, qword ptr [rbx + rsi + 13]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
setnz bl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rax + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
add dl, 35 # instrumentation
cmovnz rax, rcx
or bl, al
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
test rdx, 55
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 65
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
