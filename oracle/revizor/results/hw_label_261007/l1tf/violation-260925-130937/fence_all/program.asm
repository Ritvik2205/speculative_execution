.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
lfence
mov dil, bl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
setnbe byte ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovp rdx, qword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock sub dword ptr [r14 + rdx], -40 
lfence
and dl, al 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovnbe edx, dword ptr [r14 + rdi] 
lfence
lea di, qword ptr [rsi + rax + 38960] 
lfence
setnbe dl 
lfence
setnbe bl 
lfence
setnb sil 
lfence
mov bl, al 
lfence
sbb dl, cl 
lfence
test cx, -20370 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovbe si, word ptr [r14 + rsi] 
lfence
cmovo rbx, rax 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rax], -800407 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
